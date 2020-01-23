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
;    @     0x7fae1f8faf5d  google::LogMessage::Fail()
;    @     0x7fae1f8fd513  google::LogMessage::SendToLog()
;    @     0x7fae1f8faaeb  google::LogMessage::Flush()
;    @     0x7fae1f8fc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fae1fffafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fae20010842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fae2000f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fae1ff49102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fae1ff4d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fae1fe6bdab  std::function<>::operator()()
;    @     0x7fae1fe69844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fae1ff67cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fae1fe6b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fae1fe6abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fae1ff49a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fae1ff63b5c  Vlab::SMT::And::accept()
;    @     0x7fae1fe6b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fae1ff48ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fae1ff4e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fae1ff63b5c  Vlab::SMT::And::accept()
;    @     0x7fae1fe6b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fae1ff57a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fae1ff4f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fae1ff63ebe  Vlab::SMT::Or::accept()
;    @     0x7fae1fe6b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fae1ff57a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fae1ff4dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fae1ff61d2a  Vlab::SMT::Assert::accept()
;    @     0x7fae1fe6b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fae1ff70699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fae1ff61067  Vlab::SMT::Script::visit_children()
;    @     0x7fae1fe6b9e0  Vlab::SMT::Visitor::visit_children_of()
