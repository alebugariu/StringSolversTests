(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:24.958508  2772 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fa6fd062f5d  google::LogMessage::Fail()
;    @     0x7fa6fd065513  google::LogMessage::SendToLog()
;    @     0x7fa6fd062aeb  google::LogMessage::Flush()
;    @     0x7fa6fd06445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa6fd762fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fa6fd778842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fa6fd7778f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fa6fd6b1102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fa6fd6b507b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fa6fd5d3dab  std::function<>::operator()()
;    @     0x7fa6fd5d1844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fa6fd6cfcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fa6fd5d39ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa6fd5d2bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fa6fd6b1a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fa6fd6cbb5c  Vlab::SMT::And::accept()
;    @     0x7fa6fd5d39ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa6fd6b0ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fa6fd6b648c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa6fd6cbb5c  Vlab::SMT::And::accept()
;    @     0x7fa6fd5d39ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa6fd6bfa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa6fd6b73e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fa6fd6cbebe  Vlab::SMT::Or::accept()
;    @     0x7fa6fd5d39ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa6fd6bfa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa6fd6b5d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa6fd6c9d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa6fd5d39ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa6fd6d8699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa6fd6c9067  Vlab::SMT::Script::visit_children()
;    @     0x7fa6fd5d39e0  Vlab::SMT::Visitor::visit_children_of()
