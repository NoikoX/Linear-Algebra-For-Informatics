import numpy as np

m1 = np.matrix([[3, 7, -1], [2, 4, 6], [0, -7, -4]])
m2 = np.matrix([ [2, 4, 6],[3, 7, -1], [0, -7, -4]])
m3 = np.matrix([ [2, 4, 6], [0, -7, -4], [3, 7, -1]])
m4 = np.matrix([ [-1, -2, -3], [0, -7, -4], [3, 7, -1]])

# print(m1, m2, m3, m4, sep="\n")

M = m1 * m2 * m3 * m4
print(M)
# print(np.linalg.det(M))
# print((148 ** 3) * 74)

weird = np.matrix([[np.pi, np.e, 11], [3 * np.pi, 3 * np.e, 33], [12, -7, 2]])
print(np.linalg.det(weird))