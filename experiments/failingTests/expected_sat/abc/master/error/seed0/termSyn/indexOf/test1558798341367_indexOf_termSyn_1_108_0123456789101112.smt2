(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.indexof tmp_str0 tmp_str0 tmp_int5)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;*** Aborted at 1566142608 (unix time) try "date -d @1566142608" if you are using GNU date ***
;PC: @     0x7fb47f0a1bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3009 (TID 0x7fb47f7a1740) from PID 8; stack trace: ***
;    @     0x7fb47e1f14b0 (unknown)
;    @     0x7fb47f0a1bd6 Vlab::Solver::Value::getType()
;    @     0x7fb47f183f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7fb47f198310 Vlab::SMT::SubString::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f186a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb47f17d052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7fb47f1927e2 Vlab::SMT::Let::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f19447b Vlab::SMT::Eq::visit_children()
;    @     0x7fb47f09a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb47f1866a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fb47f17f77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fb47f194450 Vlab::SMT::Eq::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f186a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb47f17d8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb47f192b5c Vlab::SMT::And::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f186a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb47f17cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb47f190d2a Vlab::SMT::Assert::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f19f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb47f190067 Vlab::SMT::Script::visit_children()
;    @     0x7fb47f09a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb47f17cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fb47f19003c Vlab::SMT::Script::accept()
;    @     0x7fb47f09a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb47f17c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fb47f080b84 Vlab::Driver::Solve()
;    @           0x410110 main
