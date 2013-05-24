# Dale

## 2.4 macros-core

### Details

Module: macros-core  
File: macros-core  

### Description

Provides the core macro development functions: making, copying and
printing nodes, linking nodes together, and gensym functions for
variables and labels. Also provides a 'bootstrap' quasiquotation
function (not intended for use outside the standard libraries).











### Functions

#### `std.macros.make-node`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  

Returns a newly-allocated node.


#### `std.macros.copy`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(follow bool)`: Whether to include the nodes that follow `form`.  
  * `(form (p DNode))`: The node to copy.  




#### `std.macros.copy-qstr`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(form (p DNode))`: The node to copy.  
  * `(follow bool)`: Whether to include the nodes that follow `form`.  

As per `copy`, except that if the first node is a token, it will have
double-quotations marks added at the start and end of it in the copied
node.


#### `std.macros.copy-to`

Linkage: `extern`  
Returns: `void`  
Parameters:  

  * `(dst (p DNode))`: The destination node.  
  * `(src (p DNode))`: The source node.  

Copy (shallow) the details of the source node to the destination node.


#### `std.macros.print`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(form (p DNode))`: The node to print.  

Prints the node to `stdout`.


#### `std.macros.sprint`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(buf (p char))`: The buffer to which the node will be printed.  
  * `(form (p DNode))`: The node to print.  

Prints the node to the provided buffer.


#### `std.macros.get-last-node`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(form (p DNode))`: The node for which the last node should be found.  

Returns the last node in the list, by iterating over `next-node`
(i.e. this does not descend into the `list-node` of the argument
node).


#### `std.macros.mnfv`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(token-string (p char))`: The token string for the new node.  

Short for 'make-node-from-value'. There are several implementations of
this function: each is similar to `make-node`, except that each takes
an additional argument, which is used to populate the `token-str` of
the newly-allocated node. This implementation takes a `(p char)`,
copies it, and sets it in the new node.


#### `std.macros.mnfv`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(n int)`: An integer.  




#### `std.macros.mnfv`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(f float)`: A float.  




#### `std.macros.mnfv`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(d double)`: A double.  




#### `std.macros.mnfv`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(ld long-double)`: A long double.  




#### `std.macros.mnfv-wp`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`  
  * `(token-string (p char))`  
  * `(begin-line int)`  
  * `(begin-column int)`  
  * `(end-line int)`  
  * `(end-column int)`  
  * `(macro-begin-line int)`  
  * `(macro-begin-column int)`  
  * `(macro-end-line int)`  
  * `(macro-end-column int)`  

Short for 'make-node-from-value-with-position'. Takes additional node
position arguments, and sets them accordingly on the new node. Only
implemented for `(p char)` values.


#### `std.macros.link-nodes`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(argcount int)`: The number of nodes being provided.  

Links the provided nodes together, without copying them, and returns
the first provided node. This is a varargs function. Note that the
`next-node` member of the last node is not nulled.


#### `std.macros.link-nodes-list`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`  
  * `(argcount int)`  

As per `link-nodes`, except that an additional list node is allocated
and returned. This list node points to the first provided node as its
`list-node`.


#### `std.macros.link-nodes-list-wp`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`  
  * `(argcount int)`  
  * `(begin-line int)`  
  * `(begin-column int)`  
  * `(end-line int)`  
  * `(end-column int)`  
  * `(macro-begin-line int)`  
  * `(macro-begin-column int)`  
  * `(macro-end-line int)`  
  * `(macro-end-column int)`  

As per `link-nodes-list`, except it also accepts additional node
position arguments, and sets them accordingly on the newly-allocated
list node.


#### `std.macros.link-nodes-array`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(argcount int)`  
  * `(arg-array (p (p DNode)))`  

As per `link-nodes`, except that instead of being a varargs function,
it takes an array of nodes as its second argument.


#### `std.macros.valist-to-dnode-array`

Linkage: `extern`  
Returns: `int`  
Parameters:  

  * `(arglist (p (p void)))`  
  * `(argcount int)`  
  * `(arg-array (p (p DNode)))`  




#### `std.macros.gensym-var`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(buf (p char))`: The buffer for the variable name.  

Prints a new, unused variable name to the provided buffer.


#### `std.macros.gensym-label`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(buf (p char))`: The buffer for the label name.  
  * `(prefix (p char))`: The prefix for the label name.  

Prints a new, unused label name to the provided buffer. The prefix is
included in the new label name, so that it is a little easier to
determine what's happening when errors occur in the generated code.


#### `std.macros.make-gensym-label-node`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  
  * `(prefix (p char))`: The prefix for the label name.  

Generates a new label name, constructs a token node to suit and
returns that node.


#### `std.macros.make-gensym-label-node`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  

As per the previous implementation, except that no prefix is required
(it is set to the empty string).


#### `std.macros.is-gensym-label`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(label-node (p DNode))`: The label node.  
  * `(prefix (p char))`: The prefix for which to check in the label node.  

Determines whether the provided label node is a gensym label with the
specified prefix.


#### `std.macros.make-gensym-var-node`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`: A PoolNode.  

Generates a new variable name, constructs a token node to suit and
returns that node.


#### `std.macros.walk-nodes`

Linkage: `extern`  
Returns: `bool`  
Parameters:  

  * `(form (p DNode))`: The node to walk.  
  * `(pool (p PoolNode))`: A PoolNode.  
  * `(data (p void))`: Arbitrary data.  
  * `(fn (p (fn int ((form (p DNode)) (pool (p PoolNode)) (data (p void))))))`: The function pointer to call on each node.  

'Walks' through a node, recursively, calling the provided function
pointer on each node. The provided `data` argument is passed to the
function pointer on each call.


#### `std.macros.list-count`

Linkage: `extern`  
Returns: `int`  
Parameters:  

  * `(form (p DNode))`  

Takes a list node, and counts the number of nodes that are within that
list. This is not recursive: it just counts the top-level nodes from
the list.


#### `std.macros.make-node-maker`

Linkage: `extern`  
Returns: `(p DNode)`  
Parameters:  

  * `(pool (p PoolNode))`  
  * `(form (p DNode))`  

Constructs a node that, when evaluated, constructs the provided node.
For example, if the node is a simple token, then the returned node
will be `(mnfv pool token-str)`, where `token-str` is the token from
the provided node.


#### `std.macros.bqq-helper`

Linkage: `intern`  
Returns: `(p DNode)`  
Parameters:  

  * `(frm (p DNode))`  
  * `(pool (p PoolNode))`  
  * `(arg-count int)`  

A helper function for `bqq` (bootstrap-qq).






### Macros

#### `std.macros.bqq`

Linkage: `extern`  
Parameters: `void`


The bootstrap quasiquotation macro. The general-use quasiquotation
macro, `qq`, is in the `macros` module. The forms handled specially
are `uq` (unquote), `uq-nc` (unquote-no-copy), `uql` (unquote-list)
and `uql-nc` (unquote-list-no-copy). The no-copy versions of these
forms should only be used when the nodes being unquoted will not be
used again.


#### `std.macros.get-varargs-array`

Linkage: `extern`  
Parameters: `void`


Expands into a form that collects all of the available varargs into an
array with the name `arg-array-original`. Must be called within the
body of a macro, and the number of non-varargs arguments must be
deducted from `arg-count` prior to it being called.


#### `std.macros.get-varargs-list`

Linkage: `extern`  
Parameters: `void`


As per `get-varargs-array`, except that the nodes are also linked
together, as per `link-nodes`. A binding for the first node,
`varargs-list`, is also introduced.