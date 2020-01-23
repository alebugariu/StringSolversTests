(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:33.010229  2858 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f744f6bdf5d  google::LogMessage::Fail()
;    @     0x7f744f6c0513  google::LogMessage::SendToLog()
;    @     0x7f744f6bdaeb  google::LogMessage::Flush()
;    @     0x7f744f6bf45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f744fdbdfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f744fdd3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f744fdd28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f744fd0c102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f744fd1007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f744fc2edab  std::function<>::operator()()
;    @     0x7f744fc2c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f744fd2acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f744fc2e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f744fc2dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f744fd0ca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f744fd26b5c  Vlab::SMT::And::accept()
;    @     0x7f744fc2e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f744fd0bca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f744fd1148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f744fd26b5c  Vlab::SMT::And::accept()
;    @     0x7f744fc2e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f744fd1aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f744fd123e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f744fd26ebe  Vlab::SMT::Or::accept()
;    @     0x7f744fc2e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f744fd1aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f744fd10d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f744fd24d2a  Vlab::SMT::Assert::accept()
;    @     0x7f744fc2e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f744fd33699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f744fd24067  Vlab::SMT::Script::visit_children()
;    @     0x7f744fc2e9e0  Vlab::SMT::Visitor::visit_children_of()
