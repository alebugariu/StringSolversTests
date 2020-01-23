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
;    @     0x7f109f5fbf5d  google::LogMessage::Fail()
;    @     0x7f109f5fe513  google::LogMessage::SendToLog()
;    @     0x7f109f5fbaeb  google::LogMessage::Flush()
;    @     0x7f109f5fd45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f109fcfbfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f109fd11842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f109fd108f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f109fc4a102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f109fc4e07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f109fb6cdab  std::function<>::operator()()
;    @     0x7f109fb6a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f109fc68cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f109fb6c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f109fb6bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f109fc4aa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f109fc64b5c  Vlab::SMT::And::accept()
;    @     0x7f109fb6c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f109fc49ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f109fc4f48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f109fc64b5c  Vlab::SMT::And::accept()
;    @     0x7f109fb6c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f109fc58a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f109fc503e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f109fc64ebe  Vlab::SMT::Or::accept()
;    @     0x7f109fb6c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f109fc58a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f109fc4ed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f109fc62d2a  Vlab::SMT::Assert::accept()
;    @     0x7f109fb6c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f109fc71699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f109fc62067  Vlab::SMT::Script::visit_children()
;    @     0x7f109fb6c9e0  Vlab::SMT::Visitor::visit_children_of()
