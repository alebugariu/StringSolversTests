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
(declare-fun tmp_str5 () String)
(declare-fun s2 () String)
(declare-fun tmp_str6 () String)
(assert (! 
 (let (($x21 (= result "")))
 (let (($x22 (= $x21 true)))
 (let (($x1229 (= s2_fresh result)))
 (let (($x1230 (= $x1229 true)))
 (let ((?x1226 (str.len s2_fresh)))
 (let (($x1227 (= ?x1226 length)))
 (let ((?x128 (str.len s1)))
 (let (($x152 (= ?x128 offset)))
 (let (($x1228 (and $x152 $x1227)))
 (let (($x1231 (and $x1228 $x1230)))
 (let ((?x1065 (str.++ s1 s2_fresh)))
 (let ((?x1066 (str.++ ?x1065 s3)))
 (let (($x1067 (= ?x1066 s)))
 (let (($x1232 (and $x1067 $x1231)))
 (let (($x150 (> length 0)))
 (let ((?x147 (str.len s)))
 (let (($x148 (< offset ?x147)))
 (let (($x146 (>= offset 0)))
 (let (($x149 (and $x146 $x148)))
 (let (($x151 (and $x149 $x150)))
 (ite $x151 $x1232 $x22))))))))))))))))))))) :named a1))
(assert (! 
 (let ((?x1086 (str.indexof s2 tmp_str5 0)))
 (let (($x1087 (= ?x1086 (- 1))))
 (let ((?x1081 (str.replace s2 tmp_str5 tmp_str6)))
 (let (($x1082 (= ?x1081 s2_fresh)))
 (and $x1082 $x1087))))) :named a2))
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
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 

