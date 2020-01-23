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
;I0818 17:36:36.706357  2899 UnaryAutomaton.cpp:325] 1
;I0818 17:36:36.706403  2899 UnaryAutomaton.cpp:326] 1
;I0818 17:36:36.706410  2899 UnaryAutomaton.cpp:327] 1
;F0818 17:36:36.711045  2899 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f566d0caf5d  google::LogMessage::Fail()
;    @     0x7f566d0cd513  google::LogMessage::SendToLog()
;    @     0x7f566d0caaeb  google::LogMessage::Flush()
;    @     0x7f566d0cc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f566d7cafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f566d7e0842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f566d7df8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f566d719102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f566d71d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f566d63bdab  std::function<>::operator()()
;    @     0x7f566d639844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f566d737cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f566d63b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f566d63abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f566d719a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f566d733b5c  Vlab::SMT::And::accept()
;    @     0x7f566d63b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f566d718ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f566d71e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f566d733b5c  Vlab::SMT::And::accept()
;    @     0x7f566d63b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f566d727a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f566d71f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f566d733ebe  Vlab::SMT::Or::accept()
;    @     0x7f566d63b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f566d727a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f566d71dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f566d731d2a  Vlab::SMT::Assert::accept()
;    @     0x7f566d63b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f566d740699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f566d731067  Vlab::SMT::Script::visit_children()
;    @     0x7f566d63b9e0  Vlab::SMT::Visitor::visit_children_of()
