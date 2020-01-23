(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:01.102978  3104 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fdda005af5d  google::LogMessage::Fail()
;    @     0x7fdda005d513  google::LogMessage::SendToLog()
;    @     0x7fdda005aaeb  google::LogMessage::Flush()
;    @     0x7fdda005c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fdda075afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fdda0770842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fdda076f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fdda06a9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fdda06ad07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fdda05cbdab  std::function<>::operator()()
;    @     0x7fdda05c9844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fdda06c7cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fdda05cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdda05cabee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fdda06a9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fdda06c3b5c  Vlab::SMT::And::accept()
;    @     0x7fdda05cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdda06a8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fdda06ae48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdda06c3b5c  Vlab::SMT::And::accept()
;    @     0x7fdda05cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdda06b7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdda06af3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fdda06c3ebe  Vlab::SMT::Or::accept()
;    @     0x7fdda05cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdda06b7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdda06add2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdda06c1d2a  Vlab::SMT::Assert::accept()
;    @     0x7fdda05cb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdda06d0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdda06c1067  Vlab::SMT::Script::visit_children()
;    @     0x7fdda05cb9e0  Vlab::SMT::Visitor::visit_children_of()
