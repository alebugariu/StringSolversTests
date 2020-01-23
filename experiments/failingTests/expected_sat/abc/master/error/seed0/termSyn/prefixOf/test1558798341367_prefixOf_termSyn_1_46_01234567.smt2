(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.prefixof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7fba1bd39f5d  google::LogMessage::Fail()
;    @     0x7fba1bd3c513  google::LogMessage::SendToLog()
;    @     0x7fba1bd39aeb  google::LogMessage::Flush()
;    @     0x7fba1bd3b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fba1c439fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fba1c44f842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fba1c44e8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fba1c388102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fba1c38c07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fba1c2aadab  std::function<>::operator()()
;    @     0x7fba1c2a8844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fba1c3a6cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fba1c2aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fba1c2a9bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fba1c388a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fba1c3a2b5c  Vlab::SMT::And::accept()
;    @     0x7fba1c2aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fba1c387ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fba1c38d48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fba1c3a2b5c  Vlab::SMT::And::accept()
;    @     0x7fba1c2aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fba1c396a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fba1c38e3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fba1c3a2ebe  Vlab::SMT::Or::accept()
;    @     0x7fba1c2aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fba1c396a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fba1c38cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fba1c3a0d2a  Vlab::SMT::Assert::accept()
;    @     0x7fba1c2aa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fba1c3af699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fba1c3a0067  Vlab::SMT::Script::visit_children()
;    @     0x7fba1c2aa9e0  Vlab::SMT::Visitor::visit_children_of()
