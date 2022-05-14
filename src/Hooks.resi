let useRef: 'value => ref<'value>
let useRefLazy: (unit => 'value) => ref<'value>

let useState: 'state => ('state, ('state => 'state) => unit)
let useStateLazy: (unit => 'state) => ('state, ('state => 'state) => unit)

let useReducer: (~initial: 'state, ('state, 'action) => 'state) => ('state, 'action => unit)
let useReducerLazy: (
  ~init: unit => 'state,
  ('state, 'action) => 'state,
) => ('state, 'action => unit)

let useEffect: (
  ~on: 'deps,
  ~equal: ('deps, 'deps) => bool=?,
  ~beforeRender: bool=?,
  ~cleanup: unit => unit=?,
  unit => unit,
) => unit
let useEffectOnce: (~beforeRender: bool=?, ~cleanup: unit => unit=?, unit => unit) => unit
let useEffectAlways: (~beforeRender: bool=?, ~cleanup: unit => unit=?, unit => unit) => unit

let useResource: (
  ~on: 'deps,
  ~equal: ('deps, 'deps) => bool=?,
  ~beforeRender: bool=?,
  ~release: 'resource => unit,
  unit => 'resource,
) => unit

let useMemo: (~on: 'deps, ~equal: ('deps, 'deps) => bool=?, unit => 'value) => 'value
