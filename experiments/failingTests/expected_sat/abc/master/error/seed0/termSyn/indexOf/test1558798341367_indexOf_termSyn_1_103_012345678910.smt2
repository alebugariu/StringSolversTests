(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int10 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int10)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1
;actual status: not_implemented
;*** Aborted at 1566142607 (unix time) try "date -d @1566142607" if you are using GNU date ***
;PC: @     0x7fd5f04a2bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 2997 (TID 0x7fd5f0ba2740) from PID 8; stack trace: ***
;    @     0x7fd5ef5f24b0 (unknown)
;    @     0x7fd5f04a2bd6 Vlab::Solver::Value::getType()
;    @     0x7fd5f0584f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7fd5f0599310 Vlab::SMT::SubString::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f0587a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd5f057e052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7fd5f05937e2 Vlab::SMT::Let::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f059547b Vlab::SMT::Eq::visit_children()
;    @     0x7fd5f049b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd5f05876a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fd5f058077b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fd5f0595450 Vlab::SMT::Eq::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f0587a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd5f057e8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd5f0593b5c Vlab::SMT::And::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f0587a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd5f057dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd5f0591d2a Vlab::SMT::Assert::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f05a0699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd5f0591067 Vlab::SMT::Script::visit_children()
;    @     0x7fd5f049b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd5f057db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd5f059103c Vlab::SMT::Script::accept()
;    @     0x7fd5f049b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd5f057d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd5f0481b84 Vlab::Driver::Solve()
;    @           0x410110 main
