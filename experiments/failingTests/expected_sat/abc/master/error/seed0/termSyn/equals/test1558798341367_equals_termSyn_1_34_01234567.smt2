(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:39.002846  2925 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f8888854f5d  google::LogMessage::Fail()
;    @     0x7f8888857513  google::LogMessage::SendToLog()
;    @     0x7f8888854aeb  google::LogMessage::Flush()
;    @     0x7f888885645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8888f54fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f8888f6a842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f8888f698f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f8888ea3102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f8888ea707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f8888dc5dab  std::function<>::operator()()
;    @     0x7f8888dc3844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f8888ec1cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f8888dc59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8888dc4bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f8888ea3a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f8888ebdb5c  Vlab::SMT::And::accept()
;    @     0x7f8888dc59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8888ea2ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f8888ea848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8888ebdb5c  Vlab::SMT::And::accept()
;    @     0x7f8888dc59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8888eb1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8888ea93e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f8888ebdebe  Vlab::SMT::Or::accept()
;    @     0x7f8888dc59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8888eb1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8888ea7d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8888ebbd2a  Vlab::SMT::Assert::accept()
;    @     0x7f8888dc59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8888eca699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8888ebb067  Vlab::SMT::Script::visit_children()
;    @     0x7f8888dc59e0  Vlab::SMT::Visitor::visit_children_of()
