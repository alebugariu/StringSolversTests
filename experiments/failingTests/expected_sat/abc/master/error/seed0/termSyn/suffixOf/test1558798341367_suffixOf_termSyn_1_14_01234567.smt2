(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:23.160100  2752 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fac128b7f5d  google::LogMessage::Fail()
;    @     0x7fac128ba513  google::LogMessage::SendToLog()
;    @     0x7fac128b7aeb  google::LogMessage::Flush()
;    @     0x7fac128b945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fac12fb7fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fac12fcd842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fac12fcc8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fac12f06102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fac12f0a07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fac12e28dab  std::function<>::operator()()
;    @     0x7fac12e26844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fac12f24cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fac12e289ad  Vlab::SMT::Visitor::visit()
;    @     0x7fac12e27bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fac12f06a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fac12f20b5c  Vlab::SMT::And::accept()
;    @     0x7fac12e289ad  Vlab::SMT::Visitor::visit()
;    @     0x7fac12f05ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fac12f0b48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fac12f20b5c  Vlab::SMT::And::accept()
;    @     0x7fac12e289ad  Vlab::SMT::Visitor::visit()
;    @     0x7fac12f14a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fac12f0c3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fac12f20ebe  Vlab::SMT::Or::accept()
;    @     0x7fac12e289ad  Vlab::SMT::Visitor::visit()
;    @     0x7fac12f14a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fac12f0ad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fac12f1ed2a  Vlab::SMT::Assert::accept()
;    @     0x7fac12e289ad  Vlab::SMT::Visitor::visit()
;    @     0x7fac12f2d699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fac12f1e067  Vlab::SMT::Script::visit_children()
;    @     0x7fac12e289e0  Vlab::SMT::Visitor::visit_children_of()
