(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int10 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int10)) (str.indexof tmp_str0 tmp_str0 tmp_int10)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1
;actual status: not_implemented
;*** Aborted at 1566142615 (unix time) try "date -d @1566142615" if you are using GNU date ***
;PC: @     0x7f5fb3e19bd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 3069 (TID 0x7f5fb4519740) from PID 8; stack trace: ***
;    @     0x7f5fb2f694b0 (unknown)
;    @     0x7f5fb3e19bd6 Vlab::Solver::Value::getType()
;    @     0x7f5fb3efbf32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7f5fb3f10310 Vlab::SMT::SubString::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3efea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5fb3ef5052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7f5fb3f0a7e2 Vlab::SMT::Let::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3f0c47b Vlab::SMT::Eq::visit_children()
;    @     0x7f5fb3e129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5fb3efe6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f5fb3ef777b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f5fb3f0c450 Vlab::SMT::Eq::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3efea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5fb3ef58c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5fb3f0ab5c Vlab::SMT::And::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3efea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5fb3ef4d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5fb3f08d2a Vlab::SMT::Assert::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3f17699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5fb3f08067 Vlab::SMT::Script::visit_children()
;    @     0x7f5fb3e129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5fb3ef4b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5fb3f0803c Vlab::SMT::Script::accept()
;    @     0x7f5fb3e129ad Vlab::SMT::Visitor::visit()
;    @     0x7f5fb3ef47bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5fb3df8b84 Vlab::Driver::Solve()
;    @           0x410110 main
