(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1236 (str.contains "-1" "0")))
 (= $x1236 false)))
(check-sat)

(get-info :reason-unknown)



