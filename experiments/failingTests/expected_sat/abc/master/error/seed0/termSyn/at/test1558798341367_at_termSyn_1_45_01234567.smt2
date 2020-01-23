(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int6)) (int.to.str tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;actual status: not_implemented
;I0818 17:37:23.532281  3305 UnaryAutomaton.cpp:325] 1
;I0818 17:37:23.532348  3305 UnaryAutomaton.cpp:326] 1
;I0818 17:37:23.532366  3305 UnaryAutomaton.cpp:327] 1
;F0818 17:37:23.548565  3305 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f2e0b5f1f5d  google::LogMessage::Fail()
;    @     0x7f2e0b5f4513  google::LogMessage::SendToLog()
;    @     0x7f2e0b5f1aeb  google::LogMessage::Flush()
;    @     0x7f2e0b5f345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2e0bc15a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f2e0bc63992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc14762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f2e0bc60df0  Vlab::SMT::ToString::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc0f7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2e0bc5c450  Vlab::SMT::Eq::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc0d878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2e0bc4e5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2e0bc4596e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2e0bc5ab5c  Vlab::SMT::And::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc4ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2e0bc44d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2e0bc58d2a  Vlab::SMT::Assert::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc67699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2e0bc58067  Vlab::SMT::Script::visit_children()
;    @     0x7f2e0bb629e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2e0bc44b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2e0bc5803c  Vlab::SMT::Script::accept()
;    @     0x7f2e0bb629ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2e0bc447bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2e0bb48b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f2e0aca4830  __libc_start_main
