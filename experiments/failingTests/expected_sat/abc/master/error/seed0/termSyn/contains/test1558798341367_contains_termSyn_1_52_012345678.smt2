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
;    @     0x7f918da0df5d  google::LogMessage::Fail()
;    @     0x7f918da10513  google::LogMessage::SendToLog()
;    @     0x7f918da0daeb  google::LogMessage::Flush()
;    @     0x7f918da0f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f918e10dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f918e123842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f918e1228f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f918e05c102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f918e06007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f918df7edab  std::function<>::operator()()
;    @     0x7f918df7c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f918e07acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f918df7e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f918df7dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f918e05ca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f918e076b5c  Vlab::SMT::And::accept()
;    @     0x7f918df7e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f918e05bca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f918e06148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f918e076b5c  Vlab::SMT::And::accept()
;    @     0x7f918df7e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f918e06aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f918e0623e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f918e076ebe  Vlab::SMT::Or::accept()
;    @     0x7f918df7e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f918e06aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f918e060d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f918e074d2a  Vlab::SMT::Assert::accept()
;    @     0x7f918df7e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f918e083699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f918e074067  Vlab::SMT::Script::visit_children()
;    @     0x7f918df7e9e0  Vlab::SMT::Visitor::visit_children_of()
