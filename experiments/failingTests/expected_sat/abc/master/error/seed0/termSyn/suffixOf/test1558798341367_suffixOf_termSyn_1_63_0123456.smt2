(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:21.962726  2740 UnaryAutomaton.cpp:325] 1
;I0818 17:36:21.962743  2740 UnaryAutomaton.cpp:326] 1
;I0818 17:36:21.962749  2740 UnaryAutomaton.cpp:327] 1
;F0818 17:36:22.021389  2740 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f9f3b80ef5d  google::LogMessage::Fail()
;    @     0x7f9f3b811513  google::LogMessage::SendToLog()
;    @     0x7f9f3b80eaeb  google::LogMessage::Flush()
;    @     0x7f9f3b81045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9f3bf0efcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f9f3bf24842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f9f3bf238f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f9f3be5d102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f9f3be6107b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f9f3bd7fdab  std::function<>::operator()()
;    @     0x7f9f3bd7d844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f9f3be7bcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f9f3bd7f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f3bd7ebee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f9f3be5da21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f9f3be77b5c  Vlab::SMT::And::accept()
;    @     0x7f9f3bd7f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f3be5cca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f9f3be6248c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9f3be77b5c  Vlab::SMT::And::accept()
;    @     0x7f9f3bd7f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f3be6ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f3be633e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f9f3be77ebe  Vlab::SMT::Or::accept()
;    @     0x7f9f3bd7f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f3be6ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f3be61d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9f3be75d2a  Vlab::SMT::Assert::accept()
;    @     0x7f9f3bd7f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f3be84699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9f3be75067  Vlab::SMT::Script::visit_children()
;    @     0x7f9f3bd7f9e0  Vlab::SMT::Visitor::visit_children_of()
