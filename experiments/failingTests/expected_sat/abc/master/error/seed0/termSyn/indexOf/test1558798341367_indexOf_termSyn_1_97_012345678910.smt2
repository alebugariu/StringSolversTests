(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4) (str.indexof tmp_str0 tmp_str0 tmp_int4)) (str.indexof tmp_str0 tmp_str0 tmp_int4)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;*** Aborted at 1566142614 (unix time) try "date -d @1566142614" if you are using GNU date ***
;PC: @     0x7f40b61d5bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3058 (TID 0x7f40b68d5740) from PID 8; stack trace: ***
;    @     0x7f40b53254b0 (unknown)
;    @     0x7f40b61d5bd6 Vlab::Solver::Value::getType()
;    @     0x7f40b62b7f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f40b62cc310 Vlab::SMT::SubString::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62baa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f40b62b1052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f40b62c67e2 Vlab::SMT::Let::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62c847b Vlab::SMT::Eq::visit_children()
;    @     0x7f40b61ce9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f40b62ba6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f40b62b377b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f40b62c8450 Vlab::SMT::Eq::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62baa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f40b62b18c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f40b62c6b5c Vlab::SMT::And::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62baa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f40b62b0d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f40b62c4d2a Vlab::SMT::Assert::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62d3699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f40b62c4067 Vlab::SMT::Script::visit_children()
;    @     0x7f40b61ce9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f40b62b0b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f40b62c403c Vlab::SMT::Script::accept()
;    @     0x7f40b61ce9ad Vlab::SMT::Visitor::visit()
;    @     0x7f40b62b07bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f40b61b4b84 Vlab::Driver::Solve()
;    @           0x410110 main
