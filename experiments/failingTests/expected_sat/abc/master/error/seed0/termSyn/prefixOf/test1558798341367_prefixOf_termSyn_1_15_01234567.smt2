(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:28.423146  2810 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fdb5fe33f5d  google::LogMessage::Fail()
;    @     0x7fdb5fe36513  google::LogMessage::SendToLog()
;    @     0x7fdb5fe33aeb  google::LogMessage::Flush()
;    @     0x7fdb5fe3545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fdb60533fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fdb60549842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fdb605488f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fdb60482102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fdb6048607b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fdb603a4dab  std::function<>::operator()()
;    @     0x7fdb603a2844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fdb604a0cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fdb603a49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdb603a3bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fdb60482a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fdb6049cb5c  Vlab::SMT::And::accept()
;    @     0x7fdb603a49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdb60481ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fdb6048748c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdb6049cb5c  Vlab::SMT::And::accept()
;    @     0x7fdb603a49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdb60490a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdb604883e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fdb6049cebe  Vlab::SMT::Or::accept()
;    @     0x7fdb603a49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdb60490a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdb60486d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdb6049ad2a  Vlab::SMT::Assert::accept()
;    @     0x7fdb603a49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdb604a9699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdb6049a067  Vlab::SMT::Script::visit_children()
;    @     0x7fdb603a49e0  Vlab::SMT::Visitor::visit_children_of()
