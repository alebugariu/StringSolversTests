(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0) (int.to.str tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:16.166405  3245 UnaryAutomaton.cpp:325] 1
;I0818 17:37:16.173326  3245 UnaryAutomaton.cpp:326] 1
;I0818 17:37:16.173365  3245 UnaryAutomaton.cpp:327] 1
;I0818 17:37:16.190572  3245 UnaryAutomaton.cpp:325] 1
;I0818 17:37:16.194663  3245 UnaryAutomaton.cpp:326] 1
;I0818 17:37:16.194690  3245 UnaryAutomaton.cpp:327] 1
;F0818 17:37:16.262368  3245 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f752d05df5d  google::LogMessage::Fail()
;    @     0x7f752d060513  google::LogMessage::SendToLog()
;    @     0x7f752d05daeb  google::LogMessage::Flush()
;    @     0x7f752d05f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f752d681a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f752d6cf992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d680762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f752d6ccdf0  Vlab::SMT::ToString::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d680f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f752d6cd400  Vlab::SMT::Replace::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d67b7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f752d6c8450  Vlab::SMT::Eq::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d679878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f752d6ba5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f752d6b196e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f752d6c6b5c  Vlab::SMT::And::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d6baa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f752d6b0d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f752d6c4d2a  Vlab::SMT::Assert::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d6d3699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f752d6c4067  Vlab::SMT::Script::visit_children()
;    @     0x7f752d5ce9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f752d6b0b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f752d6c403c  Vlab::SMT::Script::accept()
;    @     0x7f752d5ce9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f752d6b07bb  Vlab::Solver::ConstraintSolver::start()
