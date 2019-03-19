import random as rnd
import networkx as nx
import matplotlib.pyplot as plt

def createNetwork(N, p, Ops, Things, seed = 0):
    rnd.seed = seed
    G = nx.DiGraph()
    nodes = createNodes(N, Ops, Things)
    links = createLinks(N, p, nodes)

    for node in nodes:
        G.add_node(node['name'], 
                        op=node['operator'],
                        resources=node['resources'],
                        things=node['things'] )
    
    for link in links:
        a = link['a']
        b = link['b']
        G.add_edge(a, b, 
                    lat=link['lat'],
                    bw=link['bw'])
    
    nx.draw(G, with_labels=True, arrowstyle='<->', arrowsize=9, font_size= 10, node_color='skyblue', alpha = 0.8, linewidths=0.5, width=0.5  )
    plt.show()

    for x in nx.all_simple_paths(G, 'edge2', 'edge20', cutoff=None):
        print(x)

    return nodes, links, G

def createLinks(N, p, nodes):
    links = []
    for i in range(N):
        for j in range(i+1,N):
            toss = rnd.random()
            if toss > p:
                link = {}
                link['a'] = nodes[i]['name']
                link['b'] = nodes[j]['name']
                link['lat'] = rnd.randint(1,150)
                link['bw'] = rnd.randint(1,50)
                links.append(link)
                link = {}
                link['a'] = nodes[j]['name']
                link['b'] = nodes[i]['name']
                link['lat'] = rnd.randint(1,150)
                link['bw'] = rnd.randint(1,50)
                links.append(link)
    return links
    
def createNodes(N, Ops, Things):
    nodes = []
    for i in range(N):
        isCloud = rnd.random()
        if isCloud > 0.9:
            node = {}
            node['name'] = 'cloud' + str(i)
            node['resources'] = 10000
            node['operator'] = rnd.choice(Ops)
            node['things'] = []
        else:
            node = {}
            node['name'] = 'edge' + str(i)
            node['resources'] = rnd.randint(1, 50)
            node['operator'] = rnd.choice(Ops)
            node['things'] = []
            for j in range(rnd.randint(0,2)):
                if Things != []:
                    t = rnd.choice(Things)
                    node['things'].append(t)
                    Things.remove(t)
        nodes.append(node)
    return nodes


def declareNode(node):
    result = 'node({}, {}, {}, {}).'.format(node['name'], node['operator'], node['resources'], node['things'])
    return result.replace("'", "")

def declareLink(link):
    result = 'link({}, {}, {}, {}).'.format(link['a'], link['b'], link['lat'], link['bw'])
    return result.replace("'", "")


N = 30
p = 0.9

nodes, links, G = createNetwork(N, p, ['OpA', 'OpB'], ['t1', 't2', 't3', 't4', 't5'])

for node in nodes:
    print(declareNode(node))

for link in links:
    print(declareLink(link))


    
# https://dtai.cs.kuleuven.be/problog/editor.html#task=prob&hash=4107b9b0d715dcdefd5054fc17b8f744