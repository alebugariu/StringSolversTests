(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.suffixof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: not_implemented
;*** Check failure stack trace: ***
;    @     0x7f376b0b2f5d  google::LogMessage::Fail()
;    @     0x7f376b0b5513  google::LogMessage::SendToLog()
;    @     0x7f376b0b2aeb  google::LogMessage::Flush()
;    @     0x7f376b0b445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f376b7b2fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f376b7c8842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f376b7c78f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f376b701102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f376b70507b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f376b623dab  std::function<>::operator()()
;    @     0x7f376b621844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f376b71fcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f376b6239ad  Vlab::SMT::Visitor::visit()
;    @     0x7f376b622bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f376b701a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f376b71bb5c  Vlab::SMT::And::accept()
;    @     0x7f376b6239ad  Vlab::SMT::Visitor::visit()
;    @     0x7f376b700ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f376b70648c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f376b71bb5c  Vlab::SMT::And::accept()
;    @     0x7f376b6239ad  Vlab::SMT::Visitor::visit()
;    @     0x7f376b70fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f376b7073e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f376b71bebe  Vlab::SMT::Or::accept()
;    @     0x7f376b6239ad  Vlab::SMT::Visitor::visit()
;    @     0x7f376b70fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f376b705d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f376b719d2a  Vlab::SMT::Assert::accept()
;    @     0x7f376b6239ad  Vlab::SMT::Visitor::visit()
;    @     0x7f376b728699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f376b719067  Vlab::SMT::Script::visit_children()
;    @     0x7f376b6239e0  Vlab::SMT::Visitor::visit_children_of()
