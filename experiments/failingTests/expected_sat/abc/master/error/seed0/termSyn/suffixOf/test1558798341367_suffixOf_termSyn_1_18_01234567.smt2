(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:26.967437  2794 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f321a350f5d  google::LogMessage::Fail()
;    @     0x7f321a353513  google::LogMessage::SendToLog()
;    @     0x7f321a350aeb  google::LogMessage::Flush()
;    @     0x7f321a35245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f321aa50fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f321aa66842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f321aa658f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f321a99f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f321a9a307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f321a8c1dab  std::function<>::operator()()
;    @     0x7f321a8bf844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f321a9bdcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f321a8c19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f321a8c0bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f321a99fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f321a9b9b5c  Vlab::SMT::And::accept()
;    @     0x7f321a8c19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f321a99eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f321a9a448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f321a9b9b5c  Vlab::SMT::And::accept()
;    @     0x7f321a8c19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f321a9ada82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f321a9a53e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f321a9b9ebe  Vlab::SMT::Or::accept()
;    @     0x7f321a8c19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f321a9ada82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f321a9a3d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f321a9b7d2a  Vlab::SMT::Assert::accept()
;    @     0x7f321a8c19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f321a9c6699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f321a9b7067  Vlab::SMT::Script::visit_children()
;    @     0x7f321a8c19e0  Vlab::SMT::Visitor::visit_children_of()
