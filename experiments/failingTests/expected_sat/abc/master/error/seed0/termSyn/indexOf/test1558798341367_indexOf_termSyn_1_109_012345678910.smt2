(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;*** Aborted at 1566142615 (unix time) try "date -d @1566142615" if you are using GNU date ***
;PC: @     0x7f00a26adbd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3065 (TID 0x7f00a2dad740) from PID 8; stack trace: ***
;    @     0x7f00a17fd4b0 (unknown)
;    @     0x7f00a26adbd6 Vlab::Solver::Value::getType()
;    @     0x7f00a278ff32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f00a27a4310 Vlab::SMT::SubString::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a2792a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f00a2789052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f00a279e7e2 Vlab::SMT::Let::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a27a047b Vlab::SMT::Eq::visit_children()
;    @     0x7f00a26a69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f00a27926a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f00a278b77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f00a27a0450 Vlab::SMT::Eq::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a2792a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f00a27898c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f00a279eb5c Vlab::SMT::And::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a2792a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f00a2788d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f00a279cd2a Vlab::SMT::Assert::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a27ab699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f00a279c067 Vlab::SMT::Script::visit_children()
;    @     0x7f00a26a69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f00a2788b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f00a279c03c Vlab::SMT::Script::accept()
;    @     0x7f00a26a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f00a27887bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f00a268cb84 Vlab::Driver::Solve()
;    @           0x410110 main
