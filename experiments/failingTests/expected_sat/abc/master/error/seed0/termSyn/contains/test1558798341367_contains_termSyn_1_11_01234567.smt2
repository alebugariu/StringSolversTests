(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:10.984946  3193 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f2c77b56f5d  google::LogMessage::Fail()
;    @     0x7f2c77b59513  google::LogMessage::SendToLog()
;    @     0x7f2c77b56aeb  google::LogMessage::Flush()
;    @     0x7f2c77b5845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2c78256fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f2c7826c842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f2c7826b8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f2c781a5102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f2c781a907b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f2c780c7dab  std::function<>::operator()()
;    @     0x7f2c780c5844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f2c781c3cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f2c780c79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2c780c6bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f2c781a5a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f2c781bfb5c  Vlab::SMT::And::accept()
;    @     0x7f2c780c79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2c781a4ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f2c781aa48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2c781bfb5c  Vlab::SMT::And::accept()
;    @     0x7f2c780c79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2c781b3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2c781ab3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f2c781bfebe  Vlab::SMT::Or::accept()
;    @     0x7f2c780c79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2c781b3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2c781a9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2c781bdd2a  Vlab::SMT::Assert::accept()
;    @     0x7f2c780c79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2c781cc699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2c781bd067  Vlab::SMT::Script::visit_children()
;    @     0x7f2c780c79e0  Vlab::SMT::Visitor::visit_children_of()
