(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7f59c5d37f5d  google::LogMessage::Fail()
;    @     0x7f59c5d3a513  google::LogMessage::SendToLog()
;    @     0x7f59c5d37aeb  google::LogMessage::Flush()
;    @     0x7f59c5d3945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f59c6437fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f59c644d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f59c644c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f59c6386102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f59c638a07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f59c62a8dab  std::function<>::operator()()
;    @     0x7f59c62a6844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f59c63a4cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f59c62a89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f59c62a7bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f59c6386a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f59c63a0b5c  Vlab::SMT::And::accept()
;    @     0x7f59c62a89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f59c6385ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f59c638b48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f59c63a0b5c  Vlab::SMT::And::accept()
;    @     0x7f59c62a89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f59c6394a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f59c638c3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f59c63a0ebe  Vlab::SMT::Or::accept()
;    @     0x7f59c62a89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f59c6394a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f59c638ad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f59c639ed2a  Vlab::SMT::Assert::accept()
;    @     0x7f59c62a89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f59c63ad699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f59c639e067  Vlab::SMT::Script::visit_children()
;    @     0x7f59c62a89e0  Vlab::SMT::Visitor::visit_children_of()
