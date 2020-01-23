(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int9)) (str.indexof tmp_str0 tmp_str0 tmp_int9)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;actual status: not_implemented
;*** Aborted at 1566142614 (unix time) try "date -d @1566142614" if you are using GNU date ***
;PC: @     0x7f0781d4fbd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3060 (TID 0x7f078244f740) from PID 8; stack trace: ***
;    @     0x7f0780e9f4b0 (unknown)
;    @     0x7f0781d4fbd6 Vlab::Solver::Value::getType()
;    @     0x7f0781e31f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f0781e46310 Vlab::SMT::SubString::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e34a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0781e2b052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f0781e407e2 Vlab::SMT::Let::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e4247b Vlab::SMT::Eq::visit_children()
;    @     0x7f0781d489e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0781e346a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f0781e2d77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f0781e42450 Vlab::SMT::Eq::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e34a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0781e2b8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0781e40b5c Vlab::SMT::And::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e34a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0781e2ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0781e3ed2a Vlab::SMT::Assert::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e4d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0781e3e067 Vlab::SMT::Script::visit_children()
;    @     0x7f0781d489e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0781e2ab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0781e3e03c Vlab::SMT::Script::accept()
;    @     0x7f0781d489ad Vlab::SMT::Visitor::visit()
;    @     0x7f0781e2a7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0781d2eb84 Vlab::Driver::Solve()
;    @           0x410110 main
