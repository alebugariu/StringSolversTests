(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int9)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;actual status: not_implemented
;*** Aborted at 1566142608 (unix time) try "date -d @1566142608" if you are using GNU date ***
;PC: @     0x7efec365dbd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3006 (TID 0x7efec3d5d740) from PID 8; stack trace: ***
;    @     0x7efec27ad4b0 (unknown)
;    @     0x7efec365dbd6 Vlab::Solver::Value::getType()
;    @     0x7efec373ff32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7efec3754310 Vlab::SMT::SubString::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec3742a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7efec3739052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7efec374e7e2 Vlab::SMT::Let::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec375047b Vlab::SMT::Eq::visit_children()
;    @     0x7efec36569e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7efec37426a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7efec373b77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7efec3750450 Vlab::SMT::Eq::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec3742a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7efec37398c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7efec374eb5c Vlab::SMT::And::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec3742a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7efec3738d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7efec374cd2a Vlab::SMT::Assert::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec375b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7efec374c067 Vlab::SMT::Script::visit_children()
;    @     0x7efec36569e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7efec3738b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7efec374c03c Vlab::SMT::Script::accept()
;    @     0x7efec36569ad Vlab::SMT::Visitor::visit()
;    @     0x7efec37387bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7efec363cb84 Vlab::Driver::Solve()
;    @           0x410110 main
