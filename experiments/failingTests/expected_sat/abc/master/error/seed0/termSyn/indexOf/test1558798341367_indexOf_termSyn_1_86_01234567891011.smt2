(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.indexof tmp_str0 tmp_str0 tmp_int5)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;*** Aborted at 1566142610 (unix time) try "date -d @1566142610" if you are using GNU date ***
;PC: @     0x7f6527950bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3029 (TID 0x7f6528050740) from PID 8; stack trace: ***
;    @     0x7f6526aa04b0 (unknown)
;    @     0x7f6527950bd6 Vlab::Solver::Value::getType()
;    @     0x7f6527a32f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f6527a47310 Vlab::SMT::SubString::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a35a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6527a2c052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f6527a417e2 Vlab::SMT::Let::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a4347b Vlab::SMT::Eq::visit_children()
;    @     0x7f65279499e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6527a356a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f6527a2e77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f6527a43450 Vlab::SMT::Eq::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a35a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6527a2c8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6527a41b5c Vlab::SMT::And::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a35a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6527a2bd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6527a3fd2a Vlab::SMT::Assert::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a4e699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6527a3f067 Vlab::SMT::Script::visit_children()
;    @     0x7f65279499e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6527a2bb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6527a3f03c Vlab::SMT::Script::accept()
;    @     0x7f65279499ad Vlab::SMT::Visitor::visit()
;    @     0x7f6527a2b7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f652792fb84 Vlab::Driver::Solve()
;    @           0x410110 main
