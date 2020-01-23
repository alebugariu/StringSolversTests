(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7fd481c1cf5d  google::LogMessage::Fail()
;    @     0x7fd481c1f513  google::LogMessage::SendToLog()
;    @     0x7fd481c1caeb  google::LogMessage::Flush()
;    @     0x7fd481c1e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd48231cfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fd482332842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fd4823318f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fd48226b102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fd48226f07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fd48218ddab  std::function<>::operator()()
;    @     0x7fd48218b844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fd482289cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fd48218d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd48218cbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fd48226ba21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fd482285b5c  Vlab::SMT::And::accept()
;    @     0x7fd48218d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd48226aca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fd48227048c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd482285b5c  Vlab::SMT::And::accept()
;    @     0x7fd48218d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd482279a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd4822713e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fd482285ebe  Vlab::SMT::Or::accept()
;    @     0x7fd48218d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd482279a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd48226fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd482283d2a  Vlab::SMT::Assert::accept()
;    @     0x7fd48218d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd482292699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd482283067  Vlab::SMT::Script::visit_children()
;    @     0x7fd48218d9e0  Vlab::SMT::Visitor::visit_children_of()
