(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;*** Aborted at 1566142603 (unix time) try "date -d @1566142603" if you are using GNU date ***
;PC: @     0x7f3daaf61bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 2967 (TID 0x7f3dab661740) from PID 8; stack trace: ***
;    @     0x7f3daa0b14b0 (unknown)
;    @     0x7f3daaf61bd6 Vlab::Solver::Value::getType()
;    @     0x7f3dab043f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f3dab058310 Vlab::SMT::SubString::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab046a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3dab03d052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f3dab0527e2 Vlab::SMT::Let::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab05447b Vlab::SMT::Eq::visit_children()
;    @     0x7f3daaf5a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3dab0466a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f3dab03f77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f3dab054450 Vlab::SMT::Eq::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab046a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3dab03d8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3dab052b5c Vlab::SMT::And::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab046a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3dab03cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3dab050d2a Vlab::SMT::Assert::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab05f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3dab050067 Vlab::SMT::Script::visit_children()
;    @     0x7f3daaf5a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3dab03cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f3dab05003c Vlab::SMT::Script::accept()
;    @     0x7f3daaf5a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3dab03c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f3daaf40b84 Vlab::Driver::Solve()
;    @           0x410110 main
