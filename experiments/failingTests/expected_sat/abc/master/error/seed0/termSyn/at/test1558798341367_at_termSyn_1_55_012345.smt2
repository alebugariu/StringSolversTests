(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int13 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0)) (int.to.str tmp_int13)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int13 = -1
;actual status: not_implemented
;I0818 17:37:19.269232  3265 UnaryAutomaton.cpp:325] 1
;I0818 17:37:19.269250  3265 UnaryAutomaton.cpp:326] 1
;I0818 17:37:19.269259  3265 UnaryAutomaton.cpp:327] 1
;F0818 17:37:19.275468  3265 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fbf22cdaf5d  google::LogMessage::Fail()
;    @     0x7fbf22cdd513  google::LogMessage::SendToLog()
;    @     0x7fbf22cdaaeb  google::LogMessage::Flush()
;    @     0x7fbf22cdc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fbf232fea26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fbf2334c992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf232fd762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fbf23349df0  Vlab::SMT::ToString::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf232f87f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fbf23345450  Vlab::SMT::Eq::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf232f6878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fbf233375ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fbf2332e96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fbf23343b5c  Vlab::SMT::And::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf23337a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbf2332dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fbf23341d2a  Vlab::SMT::Assert::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf23350699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fbf23341067  Vlab::SMT::Script::visit_children()
;    @     0x7fbf2324b9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fbf2332db35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fbf2334103c  Vlab::SMT::Script::accept()
;    @     0x7fbf2324b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbf2332d7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fbf23231b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fbf2238d830  __libc_start_main
