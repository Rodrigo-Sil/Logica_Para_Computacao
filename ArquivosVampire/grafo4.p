% Define o universo/dominio
fof(dominio, axiom, (
    ![X] : ((vertice(X)) => (X = v1 | X = v2 | X = v3 | X = v4 | X = v5))
)).

% Define os vertice do grafo
fof(vertices, axiom,
	(vertice(v1) & vertice(v2) & vertice(v3) & vertice(v4) & vertice(v5)) 
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
	adj(v1, v4) &
    adj(v1, v5) &
    adj(v2, v3) &
    adj(v4, v5)
).

% Conclui que se X e Y são vértices distintos, então há um caminho entre X e Y.
fof(conexo, conjecture,
	![X, Y] : ((vertice(X) & vertice(Y) & (X != Y)) => (alc(X, Y)))
).