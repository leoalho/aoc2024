M = {(i,j):int(c) for (i,l) in enumerate(open("day10.txt")) for (j,c) in enumerate(l.strip())}   # the map
N = {(i,j):{(i-1,j), (i+1,j), (i,j-1), (i,j+1)} & M.keys() for (i,j) in M}                         # neighbors
p1 = lambda s,v: {s} if M[s]==9 else set().union(*(p1(n,v|{s}) for n in N[s]-v if M[n]==M[s]+1))   # set of trailheads
p2 = lambda s,v: 1 if M[s]==9 else sum(p2(n,v|{s}) for n in N[s]-v if M[n]==M[s]+1)                # count paths
print(sum(len(p1(c,set())) for c in M if M[c]==0))
print(sum(p2(c,set()) for c in M if M[c]==0))