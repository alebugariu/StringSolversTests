(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:08.697158  3168 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.697175  3168 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.697181  3168 UnaryAutomaton.cpp:327] 1
;I0818 17:37:08.759407  3168 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.762696  3168 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.762719  3168 UnaryAutomaton.cpp:327] 1
;F0818 17:37:08.784977  3168 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fa8fb1aaf5d  google::LogMessage::Fail()
;    @     0x7fa8fb1ad513  google::LogMessage::SendToLog()
;    @     0x7fa8fb1aaaeb  google::LogMessage::Flush()
;    @     0x7fa8fb1ac45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa8fb8aafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fa8fb8c0842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fa8fb8bf8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fa8fb7f9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fa8fb7fd07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fa8fb71bdab  std::function<>::operator()()
;    @     0x7fa8fb719844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fa8fb817cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fa8fb71b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8fb71abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fa8fb7f9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fa8fb813b5c  Vlab::SMT::And::accept()
;    @     0x7fa8fb71b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8fb7f8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fa8fb7fe48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa8fb813b5c  Vlab::SMT::And::accept()
;    @     0x7fa8fb71b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8fb807a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa8fb7ff3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fa8fb813ebe  Vlab::SMT::Or::accept()
;    @     0x7fa8fb71b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8fb807a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa8fb7fdd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa8fb811d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa8fb71b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa8fb820699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa8fb811067  Vlab::SMT::Script::visit_children()
;    @     0x7fa8fb71b9e0  Vlab::SMT::Visitor::visit_children_of()
