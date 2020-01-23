(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7f777a16af5d  google::LogMessage::Fail()
;    @     0x7f777a16d513  google::LogMessage::SendToLog()
;    @     0x7f777a16aaeb  google::LogMessage::Flush()
;    @     0x7f777a16c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f777a86afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f777a880842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f777a87f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f777a7b9102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f777a7bd07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f777a6dbdab  std::function<>::operator()()
;    @     0x7f777a6d9844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f777a7d7cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f777a6db9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f777a6dabee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f777a7b9a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f777a7d3b5c  Vlab::SMT::And::accept()
;    @     0x7f777a6db9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f777a7b8ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f777a7be48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f777a7d3b5c  Vlab::SMT::And::accept()
;    @     0x7f777a6db9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f777a7c7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f777a7bf3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f777a7d3ebe  Vlab::SMT::Or::accept()
;    @     0x7f777a6db9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f777a7c7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f777a7bdd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f777a7d1d2a  Vlab::SMT::Assert::accept()
;    @     0x7f777a6db9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f777a7e0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f777a7d1067  Vlab::SMT::Script::visit_children()
;    @     0x7f777a6db9e0  Vlab::SMT::Visitor::visit_children_of()
