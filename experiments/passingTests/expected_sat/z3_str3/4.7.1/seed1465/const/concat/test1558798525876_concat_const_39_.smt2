(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x470 (str.++ "\n" "2")))
 (= ?x470 "\n2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
