(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun t2 () String)
(declare-fun t1 () String)
(declare-fun tmp_str4 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x357 (str.++ t1 t2)))
 (and (= (str.replace ?x357 tmp_str3 tmp_str4) ?x357) (= (str.contains ?x357 tmp_str3) false))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (=> (= (str.++ t1 t2) t) (= (= t1 s) false)) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1301 (str.prefixof s t)))
 (let (($x523 (= $x1301 false)))
 (not $x523))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t2 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE

;unsat core: a0 a2 

;actual status: not_implemented
;static CVC4::TypeNode CVC4::expr::TypeChecker::computeType(CVC4::NodeManager *, CVC4::TNode, bool)
;../../../../../src/expr/type_checker_template.cpp:50
;The case was: NULL")
