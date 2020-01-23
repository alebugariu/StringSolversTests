(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:41.241187  2948 UnaryAutomaton.cpp:325] 1
;I0818 17:36:41.261739  2948 UnaryAutomaton.cpp:326] 1
;I0818 17:36:41.261783  2948 UnaryAutomaton.cpp:327] 1
;F0818 17:36:41.276221  2948 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f0c6d458f5d  google::LogMessage::Fail()
;    @     0x7f0c6d45b513  google::LogMessage::SendToLog()
;    @     0x7f0c6d458aeb  google::LogMessage::Flush()
;    @     0x7f0c6d45a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f0c6da7ca26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f0c6daca992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6da7b762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f0c6dac7df0  Vlab::SMT::ToString::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6da767f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f0c6dac3450  Vlab::SMT::Eq::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6da74878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f0c6dab55ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f0c6daac96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0c6dac1b5c  Vlab::SMT::And::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6dab5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0c6daabd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0c6dabfd2a  Vlab::SMT::Assert::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6dace699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0c6dabf067  Vlab::SMT::Script::visit_children()
;    @     0x7f0c6d9c99e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0c6daabb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0c6dabf03c  Vlab::SMT::Script::accept()
;    @     0x7f0c6d9c99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0c6daab7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0c6d9afb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f0c6cb0b830  __libc_start_main
