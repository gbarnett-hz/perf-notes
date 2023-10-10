import glob as g

import pandas as p
import plotly_express as px


def label(csv_path: str) -> str:
    return csv_path.split(".csv")[0]


# we'll use these as the labels for ys
csvs = g.glob("*.csv")
csvs.sort()
labels = [label(csv) for csv in csvs]

# this will be the data frame we'll dump everything into
df = p.read_csv(csvs[0])
# we'll always use this column as the scenario label
df.rename(columns={"operations/second": labels[0]}, inplace=True)

for i in range(1, len(csvs)):
    file = csvs[i]
    df_ = p.read_csv(file)
    df[labels[i]] = df_["operations/second"]


warmup_seconds = 90
cooldown_seconds = warmup_seconds  # should use this
df.drop(axis=0, columns=["epoch", "operations", "operations-delta"], inplace=True)
df.rename(columns={"timestamp": "seconds"}, inplace=True)
df["seconds"] = range(len(df))
# cut warmup_seconds from head; cooldown_seconds from tail
df = df.iloc[warmup_seconds:]
df = df.iloc[: len(df) - cooldown_seconds]
fig = px.line(df, x=df["seconds"], y=[df[label] for label in labels])
fig.update_layout(legend_title="Latency")
fig.update_layout(yaxis_title="operations")
# fig.write_image("throughput_adjusted.svg")

# dump out the stats
for l in labels:
    col = df[l]
    min = col.min()
    max = col.max()
    mean = col.mean()
    std = col.std()
    print(f"| {l} | {min:.2f} | {max:.2f} | {mean:.2f} | {std:.2f}")
