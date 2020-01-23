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
;    @     0x7f9b48489f5d  google::LogMessage::Fail()
;    @     0x7f9b4848c513  google::LogMessage::SendToLog()
;    @     0x7f9b48489aeb  google::LogMessage::Flush()
;    @     0x7f9b4848b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9b48b89fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f9b48b9f842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f9b48b9e8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f9b48ad8102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f9b48adc07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f9b489fadab  std::function<>::operator()()
;    @     0x7f9b489f8844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f9b48af6cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f9b489fa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9b489f9bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f9b48ad8a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f9b48af2b5c  Vlab::SMT::And::accept()
;    @     0x7f9b489fa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9b48ad7ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f9b48add48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9b48af2b5c  Vlab::SMT::And::accept()
;    @     0x7f9b489fa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9b48ae6a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9b48ade3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f9b48af2ebe  Vlab::SMT::Or::accept()
;    @     0x7f9b489fa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9b48ae6a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9b48adcd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9b48af0d2a  Vlab::SMT::Assert::accept()
;    @     0x7f9b489fa9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9b48aff699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9b48af0067  Vlab::SMT::Script::visit_children()
;    @     0x7f9b489fa9e0  Vlab::SMT::Visitor::visit_children_of()
