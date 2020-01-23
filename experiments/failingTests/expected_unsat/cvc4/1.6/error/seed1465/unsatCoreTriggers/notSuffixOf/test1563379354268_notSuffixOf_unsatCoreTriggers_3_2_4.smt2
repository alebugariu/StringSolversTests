(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str4 () String)
(declare-fun t () String)
(assert (! 
 (let (($x514 (str.contains s tmp_str3)))
 (let (($x515 (= $x514 false)))
 (let ((?x1424 (str.replace s tmp_str3 tmp_str4)))
 (let (($x513 (= ?x1424 s_fresh)))
 (and $x513 $x515))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x1421 (= (str.++ t1 t2) t)))
 (=> $x1421 (= (= t2 s_fresh) false))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: not_implemented
;static CVC4::TypeNode CVC4::expr::TypeChecker::computeType(CVC4::NodeManager *, CVC4::TNode, bool)
;../../../../../src/expr/type_checker_template.cpp:50
;The case was: NULL")
