(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:28.243772  2808 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f6954eebf5d  google::LogMessage::Fail()
;    @     0x7f6954eee513  google::LogMessage::SendToLog()
;    @     0x7f6954eebaeb  google::LogMessage::Flush()
;    @     0x7f6954eed45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f69555ebfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f6955601842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f69556008f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f695553a102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f695553e07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f695545cdab  std::function<>::operator()()
;    @     0x7f695545a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f6955558cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f695545c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f695545bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f695553aa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f6955554b5c  Vlab::SMT::And::accept()
;    @     0x7f695545c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6955539ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f695553f48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6955554b5c  Vlab::SMT::And::accept()
;    @     0x7f695545c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6955548a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f69555403e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f6955554ebe  Vlab::SMT::Or::accept()
;    @     0x7f695545c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6955548a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f695553ed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6955552d2a  Vlab::SMT::Assert::accept()
;    @     0x7f695545c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6955561699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6955552067  Vlab::SMT::Script::visit_children()
;    @     0x7f695545c9e0  Vlab::SMT::Visitor::visit_children_of()
