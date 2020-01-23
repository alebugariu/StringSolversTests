(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1) (str.to.int tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:40.319603  2938 UnaryAutomaton.cpp:325] 1
;I0818 17:36:40.319661  2938 UnaryAutomaton.cpp:326] 1
;I0818 17:36:40.319670  2938 UnaryAutomaton.cpp:327] 1
;F0818 17:36:40.331481  2938 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f1fb73daf5d  google::LogMessage::Fail()
;    @     0x7f1fb73dd513  google::LogMessage::SendToLog()
;    @     0x7f1fb73daaeb  google::LogMessage::Flush()
;    @     0x7f1fb73dc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1fb79fea26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f1fb7a4c992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb79fd762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f1fb7a49df0  Vlab::SMT::ToString::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb79f87f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1fb7a45450  Vlab::SMT::Eq::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb79f6878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f1fb7a375ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f1fb7a2e96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1fb7a43b5c  Vlab::SMT::And::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb7a37a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1fb7a2dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1fb7a41d2a  Vlab::SMT::Assert::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb7a50699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1fb7a41067  Vlab::SMT::Script::visit_children()
;    @     0x7f1fb794b9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1fb7a2db35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f1fb7a4103c  Vlab::SMT::Script::accept()
;    @     0x7f1fb794b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1fb7a2d7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1fb7931b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f1fb6a8d830  __libc_start_main
