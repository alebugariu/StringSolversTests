(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;F0818 17:37:02.922788  3122 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fddfd0e0f5d  google::LogMessage::Fail()
;    @     0x7fddfd0e3513  google::LogMessage::SendToLog()
;    @     0x7fddfd0e0aeb  google::LogMessage::Flush()
;    @     0x7fddfd0e245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fddfd7e0fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fddfd7f6842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fddfd7f58f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fddfd72f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fddfd73307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fddfd651dab  std::function<>::operator()()
;    @     0x7fddfd64f844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fddfd74dcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fddfd6519ad  Vlab::SMT::Visitor::visit()
;    @     0x7fddfd650bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fddfd72fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fddfd749b5c  Vlab::SMT::And::accept()
;    @     0x7fddfd6519ad  Vlab::SMT::Visitor::visit()
;    @     0x7fddfd72eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fddfd73448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fddfd749b5c  Vlab::SMT::And::accept()
;    @     0x7fddfd6519ad  Vlab::SMT::Visitor::visit()
;    @     0x7fddfd73da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fddfd7353e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fddfd749ebe  Vlab::SMT::Or::accept()
;    @     0x7fddfd6519ad  Vlab::SMT::Visitor::visit()
;    @     0x7fddfd73da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fddfd733d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fddfd747d2a  Vlab::SMT::Assert::accept()
;    @     0x7fddfd6519ad  Vlab::SMT::Visitor::visit()
;    @     0x7fddfd756699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fddfd747067  Vlab::SMT::Script::visit_children()
;    @     0x7fddfd6519e0  Vlab::SMT::Visitor::visit_children_of()
