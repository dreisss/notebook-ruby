import matplotlib.pyplot as plot
import numpy as np

with open('.path_progress', 'r') as path_progress:
  data = [int(i) for i in path_progress.read().split(',')]
  plot.ylabel('problems solved')
  plot.xlabel('times runned "ruby path_enlightenment.rb"')
  plot.grid(linestyle = ':')
  plot.yticks(np.arange(0, 281, 20))
  plot.plot(data)

  plot.savefig('path_progress_chart.png')
