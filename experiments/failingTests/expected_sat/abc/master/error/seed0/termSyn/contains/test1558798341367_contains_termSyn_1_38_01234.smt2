(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.contains tmp_str9 tmp_str9)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;actual status: not_implemented
;I0818 17:37:10.761497  3191 UnaryAutomaton.cpp:325] 1
;I0818 17:37:10.761514  3191 UnaryAutomaton.cpp:326] 1
;I0818 17:37:10.761523  3191 UnaryAutomaton.cpp:327] 1
;I0818 17:37:10.775526  3191 UnaryAutomaton.cpp:325] 1
;I0818 17:37:10.775580  3191 UnaryAutomaton.cpp:326] 1
;I0818 17:37:10.775591  3191 UnaryAutomaton.cpp:327] 1
;I0818 17:37:10.804965  3191 UnaryAutomaton.cpp:325] 1
;I0818 17:37:10.805022  3191 UnaryAutomaton.cpp:326] 1
;I0818 17:37:10.805033  3191 UnaryAutomaton.cpp:327] 1
;I0818 17:37:10.812896  3191 UnaryAutomaton.cpp:325] 1
;I0818 17:37:10.812935  3191 UnaryAutomaton.cpp:326] 1
;I0818 17:37:10.812947  3191 UnaryAutomaton.cpp:327] 1
;F0818 17:37:10.818951  3191 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str9)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3560926f5d  google::LogMessage::Fail()
;    @     0x7f3560929513  google::LogMessage::SendToLog()
;    @     0x7f3560926aeb  google::LogMessage::Flush()
;    @     0x7f356092845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3561026fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f356103c842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f356103b8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3560f75102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3560f7907b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3560e97dab  std::function<>::operator()()
;    @     0x7f3560e95844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3560f93cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3560e979ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3560e96bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3560f75a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3560f8fb5c  Vlab::SMT::And::accept()
;    @     0x7f3560e979ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3560f74ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3560f7a48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3560f8fb5c  Vlab::SMT::And::accept()
;    @     0x7f3560e979ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3560f83a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3560f7b3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3560f8febe  Vlab::SMT::Or::accept()
;    @     0x7f3560e979ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3560f83a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3560f79d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3560f8dd2a  Vlab::SMT::Assert::accept()
;    @     0x7f3560e979ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3560f9c699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3560f8d067  Vlab::SMT::Script::visit_children()
;    @     0x7f3560e979e0  Vlab::SMT::Visitor::visit_children_of()
