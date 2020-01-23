(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (= tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:04.098891  3130 UnaryAutomaton.cpp:325] 1
;I0818 17:37:04.103864  3130 UnaryAutomaton.cpp:326] 1
;I0818 17:37:04.103896  3130 UnaryAutomaton.cpp:327] 1
;F0818 17:37:04.143149  3130 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fa7d4790f5d  google::LogMessage::Fail()
;    @     0x7fa7d4793513  google::LogMessage::SendToLog()
;    @     0x7fa7d4790aeb  google::LogMessage::Flush()
;    @     0x7fa7d479245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa7d4db4a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fa7d4e02992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4db3762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fa7d4dffdf0  Vlab::SMT::ToString::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4db0ca7  Vlab::Solver::VariableValueComputer::visitContains()
;    @     0x7fa7d4dfd356  Vlab::SMT::Contains::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4dac878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa7d4ded5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa7d4de496e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa7d4df9b5c  Vlab::SMT::And::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4deda82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa7d4de3d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa7d4df7d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4e06699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa7d4df7067  Vlab::SMT::Script::visit_children()
;    @     0x7fa7d4d019e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa7d4de3b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa7d4df703c  Vlab::SMT::Script::accept()
;    @     0x7fa7d4d019ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa7d4de37bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa7d4ce7b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fa7d3e43830  __libc_start_main
