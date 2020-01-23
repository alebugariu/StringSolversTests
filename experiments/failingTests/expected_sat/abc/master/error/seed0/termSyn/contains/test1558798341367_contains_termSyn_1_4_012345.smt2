(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:58.040199  3082 UnaryAutomaton.cpp:325] 1
;I0818 17:36:58.040242  3082 UnaryAutomaton.cpp:326] 1
;I0818 17:36:58.040251  3082 UnaryAutomaton.cpp:327] 1
;F0818 17:36:58.063951  3082 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f37d9781f5d  google::LogMessage::Fail()
;    @     0x7f37d9784513  google::LogMessage::SendToLog()
;    @     0x7f37d9781aeb  google::LogMessage::Flush()
;    @     0x7f37d978345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f37d9e81fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f37d9e97842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f37d9e968f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f37d9dd0102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f37d9dd407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f37d9cf2dab  std::function<>::operator()()
;    @     0x7f37d9cf0844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f37d9deecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f37d9cf29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f37d9cf1bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f37d9dd0a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f37d9deab5c  Vlab::SMT::And::accept()
;    @     0x7f37d9cf29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f37d9dcfca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f37d9dd548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f37d9deab5c  Vlab::SMT::And::accept()
;    @     0x7f37d9cf29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f37d9ddea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f37d9dd63e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f37d9deaebe  Vlab::SMT::Or::accept()
;    @     0x7f37d9cf29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f37d9ddea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f37d9dd4d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f37d9de8d2a  Vlab::SMT::Assert::accept()
;    @     0x7f37d9cf29ad  Vlab::SMT::Visitor::visit()
;    @     0x7f37d9df7699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f37d9de8067  Vlab::SMT::Script::visit_children()
;    @     0x7f37d9cf29e0  Vlab::SMT::Visitor::visit_children_of()
