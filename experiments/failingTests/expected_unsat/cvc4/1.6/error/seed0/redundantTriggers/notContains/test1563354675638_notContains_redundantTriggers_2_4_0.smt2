(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s3 () String)
(declare-fun s2 () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (and (= (str.at ?x126 0) ?x126) (= (str.len ?x126) 1)))) :named a1))
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(! (=> (= (str.++ (str.++ s1 s2) s3) s) (= (= s2 t) false)) :pattern ( (str.++ (str.++ s1 s2) s3) )))
  :named a2))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x190 (= $x1097 false)))
 (not $x190))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: not_implemented
;static CVC4::TypeNode CVC4::expr::TypeChecker::computeType(CVC4::NodeManager *, CVC4::TNode, bool)
;../../../../../src/expr/type_checker_template.cpp:50
;The case was: NULL")
