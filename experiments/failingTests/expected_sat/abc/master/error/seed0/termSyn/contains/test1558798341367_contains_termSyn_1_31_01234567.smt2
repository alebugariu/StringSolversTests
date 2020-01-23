(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;F0818 17:37:10.643445  3189 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f107b257f5d  google::LogMessage::Fail()
;    @     0x7f107b25a513  google::LogMessage::SendToLog()
;    @     0x7f107b257aeb  google::LogMessage::Flush()
;    @     0x7f107b25945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f107b957fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f107b96d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f107b96c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f107b8a6102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f107b8aa07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f107b7c8dab  std::function<>::operator()()
;    @     0x7f107b7c6844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f107b8c4cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f107b7c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f107b7c7bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f107b8a6a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f107b8c0b5c  Vlab::SMT::And::accept()
;    @     0x7f107b7c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f107b8a5ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f107b8ab48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f107b8c0b5c  Vlab::SMT::And::accept()
;    @     0x7f107b7c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f107b8b4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f107b8ac3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f107b8c0ebe  Vlab::SMT::Or::accept()
;    @     0x7f107b7c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f107b8b4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f107b8aad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f107b8bed2a  Vlab::SMT::Assert::accept()
;    @     0x7f107b7c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f107b8cd699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f107b8be067  Vlab::SMT::Script::visit_children()
;    @     0x7f107b7c89e0  Vlab::SMT::Visitor::visit_children_of()
