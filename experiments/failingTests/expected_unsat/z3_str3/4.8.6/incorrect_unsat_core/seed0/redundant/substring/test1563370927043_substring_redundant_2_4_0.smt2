(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun s2_fresh () String)
(declare-fun length () Int)
(declare-fun offset () Int)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun s2 () String)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x1229 (and (and (= (str.len s1) offset) (= (str.len s2_fresh) length)) (= (= s2_fresh result) true))))
 (let ((?x1063 (str.++ s1 s2_fresh)))
 (let ((?x1064 (str.++ ?x1063 s3)))
 (let (($x1065 (= ?x1064 s)))
 (let (($x150 (> length 0)))
 (let ((?x147 (str.len s)))
 (let (($x148 (< offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x149 (and $x146 $x148)))
 (let (($x151 (and $x149 $x150)))
 (ite $x151 (and $x1065 $x1229) $x22))))))))))))) :named a1))
(assert (! 
 (let ((?x153 (str.len s2)))
 (let (($x1061 (= ?x153 1)))
 (let ((?x1058 (str.at s2 0)))
 (let (($x1060 (= ?x1058 s2_fresh)))
 (and $x1060 $x1061))))) :named a2))
(assert (! 
 (let ((?x143 (str.substr s offset length)))
 (let (($x144 (= ?x143 result)))
 (not $x144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;length = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE
;s2 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(a0 a2 a1)
