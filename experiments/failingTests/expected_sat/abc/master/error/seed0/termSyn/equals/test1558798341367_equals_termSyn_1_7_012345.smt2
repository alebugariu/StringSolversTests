(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:37.390455  2907 UnaryAutomaton.cpp:325] 1
;I0818 17:36:37.390475  2907 UnaryAutomaton.cpp:326] 1
;I0818 17:36:37.390483  2907 UnaryAutomaton.cpp:327] 1
;F0818 17:36:37.403451  2907 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f7fc3a51f5d  google::LogMessage::Fail()
;    @     0x7f7fc3a54513  google::LogMessage::SendToLog()
;    @     0x7f7fc3a51aeb  google::LogMessage::Flush()
;    @     0x7f7fc3a5345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7fc4151fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f7fc4167842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f7fc41668f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f7fc40a0102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f7fc40a407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f7fc3fc2dab  std::function<>::operator()()
;    @     0x7f7fc3fc0844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f7fc40becb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f7fc3fc29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fc3fc1bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f7fc40a0a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f7fc40bab5c  Vlab::SMT::And::accept()
;    @     0x7f7fc3fc29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fc409fca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f7fc40a548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7fc40bab5c  Vlab::SMT::And::accept()
;    @     0x7f7fc3fc29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fc40aea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7fc40a63e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f7fc40baebe  Vlab::SMT::Or::accept()
;    @     0x7f7fc3fc29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fc40aea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7fc40a4d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7fc40b8d2a  Vlab::SMT::Assert::accept()
;    @     0x7f7fc3fc29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fc40c7699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7fc40b8067  Vlab::SMT::Script::visit_children()
;    @     0x7f7fc3fc29e0  Vlab::SMT::Visitor::visit_children_of()
