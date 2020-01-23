(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:01.686748  3110 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f7b93d0df5d  google::LogMessage::Fail()
;    @     0x7f7b93d10513  google::LogMessage::SendToLog()
;    @     0x7f7b93d0daeb  google::LogMessage::Flush()
;    @     0x7f7b93d0f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7b9440dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f7b94423842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f7b944228f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f7b9435c102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f7b9436007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f7b9427edab  std::function<>::operator()()
;    @     0x7f7b9427c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f7b9437acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f7b9427e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7b9427dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f7b9435ca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f7b94376b5c  Vlab::SMT::And::accept()
;    @     0x7f7b9427e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7b9435bca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f7b9436148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7b94376b5c  Vlab::SMT::And::accept()
;    @     0x7f7b9427e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7b9436aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7b943623e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f7b94376ebe  Vlab::SMT::Or::accept()
;    @     0x7f7b9427e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7b9436aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7b94360d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7b94374d2a  Vlab::SMT::Assert::accept()
;    @     0x7f7b9427e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7b94383699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7b94374067  Vlab::SMT::Script::visit_children()
;    @     0x7f7b9427e9e0  Vlab::SMT::Visitor::visit_children_of()
