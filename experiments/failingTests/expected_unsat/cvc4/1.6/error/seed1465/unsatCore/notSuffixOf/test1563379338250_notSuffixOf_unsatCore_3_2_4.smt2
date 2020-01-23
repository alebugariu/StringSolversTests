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
 (let (($x1040 (str.contains s tmp_str3)))
 (let (($x1041 (= $x1040 false)))
 (let ((?x1038 (str.replace s tmp_str3 tmp_str4)))
 (let (($x1039 (= ?x1038 s_fresh)))
 (and $x1039 $x1041))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x1239 (= (str.++ t1 t2) t)))
 (=> $x1239 (= (= t2 s_fresh) false))))
  :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
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
