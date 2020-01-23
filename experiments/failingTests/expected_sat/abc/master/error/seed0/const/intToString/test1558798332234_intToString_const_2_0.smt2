(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (int.to.str tmp_int0) "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = 2
;actual status: not_implemented
;I0818 17:35:42.326231  2118 UnaryAutomaton.cpp:325] 1
;I0818 17:35:42.326280  2118 UnaryAutomaton.cpp:326] 1
;I0818 17:35:42.326304  2118 UnaryAutomaton.cpp:327] 1
;F0818 17:35:42.340294  2118 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fe19a2d8f5d  google::LogMessage::Fail()
;    @     0x7fe19a2db513  google::LogMessage::SendToLog()
;    @     0x7fe19a2d8aeb  google::LogMessage::Flush()
;    @     0x7fe19a2da45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fe19a8fca26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fe19a94a992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a8fb762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fe19a947df0  Vlab::SMT::ToString::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a8f67f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fe19a943450  Vlab::SMT::Eq::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a8f4878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fe19a9355ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fe19a92c96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe19a941b5c  Vlab::SMT::And::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a935a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe19a92bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe19a93fd2a  Vlab::SMT::Assert::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a94e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe19a93f067  Vlab::SMT::Script::visit_children()
;    @     0x7fe19a8499e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe19a92bb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fe19a93f03c  Vlab::SMT::Script::accept()
;    @     0x7fe19a8499ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe19a92b7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fe19a82fb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fe19998b830  __libc_start_main
