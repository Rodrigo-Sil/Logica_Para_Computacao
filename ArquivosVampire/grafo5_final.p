% Define o universo/dominio
fof(dominio, axiom, (
    ![X] : ((vertice(X)) => (X = v1 | X = v2 | X = v3 | X = v4 | X = v5 | X = v6 | X = v7 | X = v8 | X = v9 | X = v10 |X = v11 | X = v12 | X = v13 | X = v14 | X = v15))
)).

% Define os vertice do grafo
fof(vertices, axiom,
	(
    vertice(v1) &
    vertice(v2) & 
    vertice(v3) & 
    vertice(v4) & 
    vertice(v5) &
    vertice(v6) &
    vertice(v7) & 
    vertice(v8) & 
    vertice(v9) & 
    vertice(v10) &
    vertice(v11) &
    vertice(v12) & 
    vertice(v13) & 
    vertice(v14) & 
    vertice(v15)
    ) 
).

% Define a propriedade de simetria do grafo não direcionado
fof(h1, axiom,
	![X, Y] : (adj(X, Y) => adj(Y, X))
).

% Define que se entre dois vértices há uma aresta, então há um caminho entre eles dois
fof(h3, axiom,
	![X, Y] : (adj(X, Y) => alc(X, Y))
).

% Define se há um caminho entre dois vértices, X e Y, e há uma
% aresta entre Y e um outro vértice Z, então há um caminho entre 
% X e Z
fof(h4, axiom,
	![X, Y, Z] : ((alc(X, Y) & adj(Y, Z)) => alc(X, Z))
).

% Define as arestas entre os vértices
fof(ligacoes, axiom,
	(
    adj(v1, v11) & 
    adj(v1, v12) & 
    adj(v2, v11) & 
    adj(v3, v9) & 
    adj(v4, v10) & 
    adj(v4, v8) & 
    adj(v5, v7) & 
    adj(v5, v1) & 
    adj(v5, v10) & 
    adj(v6, v11) & 
    adj(v6, v15) & 
    adj(v6, v7) & 
    adj(v7, v13) & 
    adj(v7, v11) & 
    adj(v8, v11) & 
    adj(v8, v12) & 
    adj(v8, v14) & 
    adj(v10, v12) & 
    adj(v12, v13) & 
    adj(v13, v15) & 
    adj(v14, v15))
).

% Conclui que se X e Y são vértices distintos, então há um caminho entre X e Y.
fof(conexo, conjecture,
	![X, Y] : ((vertice(X) & vertice(Y) & (X != Y)) => (alc(X, Y)))
).